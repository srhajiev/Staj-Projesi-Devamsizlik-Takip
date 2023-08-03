 
<!DOCTYPE html>
<html lang="tr" >
<head>
  <meta charset="UTF-8">
  <title>Öğrenci Devamsızlık Takip Sistemi</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.1.2/tailwind.min.css'>

</head>
<body>
<!-- partial:index.partial.html -->
<section class="flex flex-col md:flex-row h-screen items-center">

  <div class="bg-blue-600 hidden lg:block w-full md:w-1/2 xl:w-2/3 h-screen">
    <img src="https://isbh.tmgrup.com.tr/sbh/2020/10/30/650x344/mersin-universitesi-us-news-world-report-tarafinda-1604061932502.jpg" alt="" class="w-full h-full object-cover">
  </div>

  <div class="bg-white w-full md:max-w-md lg:max-w-full md:mx-auto md:mx-0 md:w-1/2 xl:w-1/3 h-screen px-6 lg:px-16 xl:px-12
        flex items-center justify-center">

    <div class="w-full h-100">

      <h1 class="text-xl font-bold">Öğrenci Devamsızlık Takip Sistemi</h1>

      <h1 class="text-xl md:text-2xl font-bold leading-tight mt-12">Hesabınıza Giriş Yapın</h1>

      
        <form method="POST" action="<?php echo e(route('login')); ?>" class="mt-6">
        <?php echo csrf_field(); ?>

        <div>
          <label class="block text-gray-700"> E-Posta Adresi</label>
          <input type="email" name="email" id="" placeholder="E-Posta" class="<?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> border-red-500 <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> w-full px-4 py-3 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500 focus:bg-white focus:outline-none" autofocus autocomplete required>

           <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
        <p class="text-red-500 text-xs italic"><?php echo e($message); ?></p>
    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>

        </div>

        <div class="mt-4">
          <label class="block text-gray-700">Parola</label>
          <input type="password" name="password" id="" placeholder=" Parola" minlength="6" class="<?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> border-red-500 <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> w-full px-4 py-3 rounded-lg bg-gray-200 mt-2 border focus:border-blue-500
                focus:bg-white focus:outline-none" required>

                <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
        <p class="text-red-500 text-xs italic"><?php echo e($message); ?></p>
    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
        </div>

       
        <button type="submit" class="w-full block bg-blue-500 hover:bg-blue-400 focus:bg-blue-400 text-white font-semibold rounded-lg
              px-4 py-3 mt-6">  Giriş Yap</button>
      </form>
      <hr class="my-6 border-gray-300 w-full">
      <p class="mt-8">Hesaıbınız Yokmu? <a href="/register" class="text-blue-500 hover:text-blue-700 font-semibold">Şimdı Kayıt ol</a></p>

      <p class="text-sm text-gray-500 mt-12">&copy; 2023  Öğrenci Devamsızlık Takip Sistemi - Tüm Haklar Korunuyor.</p>
    </div>
  </div>

</section>
<!-- partial -->
  
</body>
</html>






<?php /**PATH C:\Users\arifh\Desktop\stajjjjjjj\laravel-school-management-system\resources\views/auth/login.blade.php ENDPATH**/ ?>