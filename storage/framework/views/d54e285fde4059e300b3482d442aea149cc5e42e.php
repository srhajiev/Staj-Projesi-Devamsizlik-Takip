<div class="w-full block mt-8">
    <div class="flex flex-wrap sm:flex-no-wrap justify-between">
        <div class="w-full bg-gray-200 text-center border border-gray-300 px-8 py-6 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl"><?php echo e(sprintf("%02d", $teacher->classes_count)); ?></span>
                <span class="leading-tight">Sınıflar</span>
            </h3>
        </div>
        <div class="w-full bg-gray-200 text-center border border-gray-300 px-8 py-6 mx-0 sm:mx-6 my-4 sm:my-0 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl"><?php echo e(sprintf("%02d", $teacher->subjects_count)); ?></span>
                <span class="leading-tight">Dersler</span>
            </h3>
        </div>
        <div class="w-full bg-gray-200 text-center border border-gray-300 px-8 py-6 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl"><?php echo e(($teacher->students[0]->students_count) ?? 0); ?></span>
                <span class="leading-tight">Öğrenciler</span>
            </h3>
        </div>
    </div>
</div>
<div class="w-full block mt-8">
    <div class="flex flex-wrap sm:flex-no-wrap justify-between">
        <div class="w-full sm:w-1/2 mr-2 mb-6">
            <h3 class="text-gray-700 uppercase font-bold mb-2">Sınıf Listesi</h3>
            <div class="flex flex-wrap items-center">
                <?php $__currentLoopData = $teacher->classes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $class): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="w-full sm:w-1/2 text-center border border-gray-200 rounded">
                        <div class="text-gray-800 uppercase font-semibold px-4 py-4 mb-2"><?php echo e($class->class_name); ?></div>
                        <a href="<?php echo e(route('teacher.attendance.create',$class->id)); ?>" class="bg-gray-200 inline-block mb-4 text-xs text-gray-600 uppercase font-semibold px-4 py-2 border border-gray-200 rounded">Katılım</a>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
        <div class="w-full sm:w-1/2 ml-2 mb-6">
            <h3 class="text-gray-700 uppercase font-bold mb-2">Ders Listesi</h3>
            <div class="flex items-center bg-gray-200 rounded-tl rounded-tr">
                <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-semibold">Kod</div>
                <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-semibold">Ders</div>
                <div class="w-1/3 text-right text-gray-600 py-2 px-4 font-semibold">Öğretmen</div>
            </div>
            <?php $__currentLoopData = $teacher->subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="flex items-center justify-between border border-gray-200">
                    <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-medium"><?php echo e($subject->subject_code); ?></div>
                    <div class="w-1/3 text-left text-gray-600 py-2 px-4 font-medium"><?php echo e($subject->name); ?></div>
                    <div class="w-1/3 text-right text-gray-600 py-2 px-4 font-medium"><?php echo e($subject->teacher->user->name); ?></div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div> <!-- ./ÖĞRETMEN --> 
<?php /**PATH C:\Users\arifh\Desktop\stajjjjjjj\laravel-school-management-system\resources\views/dashboard/teacher.blade.php ENDPATH**/ ?>