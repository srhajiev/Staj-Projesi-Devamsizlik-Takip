

<?php $__env->startSection('content'); ?>

<div class="403">
    <div class="my-12 text-center">
        <h1 class="text-5xl font-bold">403</h1>
        <p class="font-bold text-gray-600 mb-6">Kullanıcının doğru yetkileri yok.</p>
        <a href="<?php echo e(route('home')); ?>" class="text-sm text-gray-600 border border-gray-400 px-4 py-2 rounded">Ana Sayfaya Dön.</a>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\arifh\Desktop\stajjjjjjj\laravel-school-management-system\resources\views/errors/403.blade.php ENDPATH**/ ?>