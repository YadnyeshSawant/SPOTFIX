<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Report Submitted Successfully - Spotfix</title>
<script src="https://cdn.tailwindcss.com?plugins=forms,typography"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"
	rel="stylesheet" />
<script>
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					primary : "#f97316", // Vibrant orange from screenshot
					"background-light" : "#f3f4f6",
					"background-dark" : "#111827",
					"card-light" : "#ffffff",
					"card-dark" : "#21252b", // Matching charcoal from screenshot
				},
				fontFamily : {
					display : [ "Inter", "sans-serif" ],
				},
				borderRadius : {
					DEFAULT : "1.5rem",
				},
			},
		},
	};
</script>
<style>
.header-gradient {
	background: linear-gradient(90deg, #4f7df9 0%, #8b5cf6 100%);
}
</style>
</head>
<body
	class="font-display bg-background-light dark:bg-background-dark text-slate-900 dark:text-slate-100 min-h-screen flex items-center justify-center p-4">
	<div class="fixed inset-0 bg-black/60 backdrop-blur-sm z-0"></div>
	<div
		class="relative z-10 w-full max-w-xl bg-card-light dark:bg-card-dark shadow-2xl overflow-hidden rounded-[2rem] border border-slate-200 dark:border-slate-800 transform transition-all">
		<div
			class="header-gradient p-8 text-center flex flex-col items-center justify-center gap-4">
			<div
				class="w-16 h-16 bg-white/20 rounded-full flex items-center justify-center border-4 border-white/30">
				<span class="material-icons-outlined text-white text-5xl">check</span>
			</div>
			<div class="space-y-1">
				<h1 class="text-white text-3xl font-bold tracking-tight">Report
					Submitted Successfully!</h1>
				<p class="text-white/80 text-sm font-medium">Thank you for
					contributing to your community</p>
			</div>
		</div>
		<div class="p-10 text-center space-y-8">
			<p
				class="text-lg text-slate-600 dark:text-slate-300 leading-relaxed max-w-sm mx-auto">
				Your report has been registered and sent to the respective
				authorities for verification.</p>
			<div class="flex justify-center py-2">
				<div
					class="h-1 w-24 bg-slate-200 dark:bg-slate-700 rounded-full opacity-50"></div>
			</div>
			<div class="w-full">
				<a
					class="group relative flex items-center justify-center w-full bg-primary hover:bg-orange-600 text-white font-bold py-5 px-8 rounded-full transition-all duration-200 shadow-lg shadow-orange-500/20 active:scale-[0.98]"
					href="#"> <span class="text-xl">Go Back to Dashboard</span> <span
					class="material-icons-outlined ml-3 transition-transform group-hover:translate-x-1">arrow_forward</span>
				</a>
			</div>
		</div>
		<div class="pb-6 text-center">
			<p
				class="text-[10px] uppercase tracking-widest text-slate-400 dark:text-slate-500 font-semibold">
				Citizen Service Portal - Spotfix</p>
		</div>
	</div>
	<div class="fixed bottom-4 right-4 z-50">
		<button
			class="p-3 rounded-full bg-white dark:bg-slate-800 shadow-lg border border-slate-200 dark:border-slate-700"
			onclick="document.documentElement.classList.toggle('dark')">
			<span class="material-icons-outlined dark:hidden">dark_mode</span> <span
				class="material-icons-outlined hidden dark:block text-yellow-400">light_mode</span>
		</button>
	</div>
	<script>
		// Start in dark mode by default as per the screenshot reference
		document.documentElement.classList.add('dark');
	</script>

</body>
</html>