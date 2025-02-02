import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout';
import { Head } from '@inertiajs/react';
import { useState } from 'react';
import { router } from '@inertiajs/react'

export default function ProductIndex({ products }) {
    const [selectedImage, setSelectedImage] = useState({});

    const handleImageChange = (e, productId) => {
        const file = e.target.files[0];
        if (file) {
            setSelectedImage((prev) => ({ ...prev, [productId]: file }));
        }
    };

    const handleUpload = (productId) => {
        if (!selectedImage[productId]) return;

        const formData = new FormData();
        formData.append("image", selectedImage[productId]);

        router.post(`/products/${productId}/upload-image`, formData, {
            forceFormData: true,
            onSuccess: () => setSelectedImage((prev) => ({ ...prev, [productId]: null })),
        });
    };
    return (
        <AuthenticatedLayout
            header={
                <h2 className="text-xl font-semibold leading-tight text-gray-800 dark:text-gray-200">
                    Product List
                </h2>
            }
        >
            <Head title="Product List" />

            <div className="py-12">
                <div className="mx-auto max-w-7xl sm:px-6 lg:px-8">
                    <div className="overflow-hidden bg-white shadow-sm sm:rounded-lg dark:bg-gray-800">
                        <div className="p-6 text-gray-900 dark:text-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full bg-white dark:bg-gray-800 shadow-md rounded-lg">
                                    <thead>
                                        <tr className="bg-gray-200 dark:bg-gray-700 text-gray-900 dark:text-gray-100">
                                            <th className="p-2">Image</th>
                                            <th className="p-2">Title</th>
                                            <th className="p-2">Category</th>
                                            <th className="p-2">Price</th>
                                            <th className="p-2">Brand</th>
                                            <th className="p-2">Rating</th>
                                            <th className="p-2">Upload Image</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {products.map((product) => (
                                            <tr key={product.id} className="border-b border-gray-300 dark:border-gray-600">
                                                <td className="p-2">
                                                    <img src={product.image} alt={product.title} className="w-16 h-16 object-cover rounded" />
                                                </td>
                                                <td className="p-2">{product.title}</td>
                                                <td className="p-2">{product.category?.name}</td>
                                                <td className="p-2">${product.price}</td>
                                                <td className="p-2">{product.brand?.name || "N/A"}</td>
                                                <td className="p-2">{product.rating?.rate || "N/A"} ⭐</td>
                                                <td className="p-2 w-32">
                                                    <input
                                                        type="file"
                                                        accept="image/*"
                                                        onChange={(e) => handleImageChange(e, product.id)}
                                                        className="hidden"
                                                        id={`upload-${product.id}`}
                                                    />
                                                    <label
                                                        htmlFor={`upload-${product.id}`}
                                                        className="bg-blue-500 text-white px-3 py-1 rounded cursor-pointer hover:bg-blue-600"
                                                    >
                                                        Choose File
                                                    </label>
                                                    {selectedImage[product.id] && (
                                                        <button
                                                            onClick={() => handleUpload(product.id)}
                                                            className="ml-2 bg-green-500 text-white px-3 py-1 rounded hover:bg-green-600"
                                                        >
                                                            Upload
                                                        </button>
                                                    )}
                                                </td>
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
