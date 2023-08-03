

<?php $__env->startSection('content'); ?>
    <div class="create">

        <div class="flex items-center justify-between mb-6">
           <div>
    <h2 class="text-gray-700 uppercase font-bold">Katılım</h2>
</div>
<div class="flex flex-wrap items-center">
    <a href="<?php echo e(route('home')); ?>" class="bg-gray-200 text-gray-700 text-sm uppercase py-2 px-4 flex items-center rounded">
        <svg class="w-3 h-3 fill-current" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="long-arrow-alt-left" class="svg-inline--fa fa-long-arrow-alt-left fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M134.059 296H436c6.627 0 12-5.373 12-12v-56c0-6.627-5.373-12-12-12H134.059v-46.059c0-21.382-25.851-32.09-40.971-16.971L7.029 239.029c-9.373 9.373-9.373 24.569 0 33.941l86.059 86.059c15.119 15.119 40.971 4.411 40.971-16.971V296z"></path></svg>
        <span class="ml-2 text-xs font-semibold">Geri</span>
    </a>
</div>
</div>

<div class="w-full mt-8 bg-white rounded">
    <div class="flex items-center justify-between px-6 py-6 pb-0">
        <div class="border-l-4 border-gray-600 pl-2">
            <h2 class="text-gray-700 uppercase font-bold"><?php echo e($attendances[0]->student->user->name ?? ''); ?></h2>
        </div>
    </div>

    <div class="w-full px-6 py-6">
        <div class="flex items-center justify-between bg-gray-200 rounded-tl rounded-tr">
            <div class="w-3/12 text-left text-gray-600 py-2 px-4 font-semibold">Tarih</div>
            <div class="w-3/12 text-left text-gray-600 py-2 px-4 font-semibold">Öğretmen</div>
            <div class="w-3/12 text-left text-gray-600 py-2 px-4 font-semibold">Sınıf</div>
            <div class="w-3/12 text-right text-gray-600 py-2 px-4 font-semibold">Katılım Durumu</div>
        </div>
        <?php $__currentLoopData = $attendances; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attendance): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="flex items-center justify-between border border-gray-200">
                <div class="w-3/12 text-sm text-left text-gray-600 py-2 px-4 font-semibold"><?php echo e($attendance->attendence_date); ?></div>
                <div class="w-3/12 text-sm text-left text-gray-600 py-2 px-4 font-semibold"><?php echo e($attendance->teacher->user->name); ?></div>
                <div class="w-3/12 text-sm text-left text-gray-600 py-2 px-4 font-semibold"><?php echo e($attendance->class->class_name); ?></div>
                <div class="w-3/12 text-xs text-right text-gray-600 py-2 px-4 font-semibold">
                    <?php if($attendance->attendence_status): ?>
                        <span class="bg-green-600 text-white px-2 py-1 rounded">Katıldı</span>
                    <?php else: ?>
                        <span class="bg-red-600 text-white px-2 py-1 rounded">Katılmadı</span>
                    <?php endif; ?>
                </div>
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        </div>
                    </div>
            </div>        
        </div>

    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\arifh\Desktop\stajjjjjjj\laravel-school-management-system\resources\views/backend/attendance/show.blade.php ENDPATH**/ ?>