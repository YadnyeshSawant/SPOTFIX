<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="dark" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Department Coordinator Home Dashboard</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<style type="text/tailwindcss">
        :root {
            --primary-orange: #F59E0B;
            --dark-charcoal: #2E3137;
            --sidebar-dark: #1A1C1E;
            --blue-purple-gradient: linear-gradient(135deg, #6366F1 0%, #8B5CF6 100%);
        }
        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
        }
        .gradient-header {
            background: var(--blue-purple-gradient);
        }
        .sidebar-active {
            background-color: var(--primary-orange);
            color: white;
        }
        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            background: transparent;
        }
        ::-webkit-scrollbar-thumb {
            background: #4B5563;
            border-radius: 10px;
        }
    </style>
<script>
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					primary : "#F59E0B",
					charcoal : "#2E3137",
					"background-dark" : "#121212",
					"sidebar-dark" : "#1A1C1E",
				},
				fontFamily : {
					display : [ "Plus Jakarta Sans", "sans-serif" ],
				},
				borderRadius : {
					DEFAULT : "1rem",
					'2xl' : "1.5rem",
				},
			},
		},
	};
</script>
</head>
<body
	class="bg-slate-50 dark:bg-background-dark text-slate-900 dark:text-slate-100 min-h-screen flex">
	<aside
		class="w-80 flex-shrink-0 bg-white dark:bg-sidebar-dark border-r border-slate-200 dark:border-slate-800 flex flex-col h-screen sticky top-0">
		<div class="p-6">
			<div
				class="gradient-header p-6 rounded-2xl text-white shadow-lg mb-8">
				<h2 class="text-2xl font-bold mb-1">Hello John</h2>
				<p class="text-white/80 text-sm font-medium">Department
					Coordinator</p>
			</div>
			<nav class="space-y-3">
				<a
					class="sidebar-active flex items-center gap-4 px-6 py-4 rounded-full transition-all shadow-md"
					href="#"> <span class="material-symbols-outlined">dashboard</span>
					<span class="font-medium">DashBoard</span>
				</a> <a
					class="flex items-center gap-4 px-6 py-4 rounded-full text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-slate-800 transition-all"
					href="#"> <span class="material-symbols-outlined">account_tree</span>
					<span class="font-medium">Manage Sub Branch...</span>
				</a> <a
					class="flex items-center gap-4 px-6 py-4 rounded-full text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-slate-800 transition-all"
					href="#"> <span class="material-symbols-outlined">person</span>
					<span class="font-medium">Profile</span>
				</a>
			</nav>
		</div>
	</aside>
	<main class="flex-grow p-10 overflow-y-auto">
		<header class="mb-12">
			<p
				class="text-slate-500 dark:text-slate-400 text-xl mb-2 font-medium">Hey
				John</p>
			<h1 class="text-4xl font-extrabold text-charcoal dark:text-white">What's
				On Your Mind?</h1>
		</header>
		<div class="grid grid-cols-1 xl:grid-cols-2 gap-8">
			<div
				class="bg-charcoal dark:bg-charcoal p-10 rounded-3xl relative overflow-hidden flex flex-col justify-between h-[360px] border-l-8 border-primary group transition-all hover:translate-y-[-4px] shadow-xl">
				<div class="max-w-[70%] relative z-10">
					<h3 class="text-3xl font-semibold text-white leading-tight mb-8">
						Keep the public informed, Send Announcement!</h3>
					<a
						class="inline-flex items-center px-8 py-4 bg-primary text-white rounded-full font-bold hover:bg-orange-600 transition-colors shadow-lg"
						href="#"> New Announcement </a>
				</div>
				<div class="absolute right-8 bottom-8">
					<span
						class="material-symbols-outlined text-[160px] text-white/10 select-none">campaign</span>
				</div>
				<div
					class="absolute -top-12 -right-12 w-40 h-40 bg-primary/5 rounded-full"></div>
			</div>
			<div
				class="bg-charcoal dark:bg-charcoal p-10 rounded-3xl relative overflow-hidden flex flex-col justify-between h-[360px] border-l-8 border-primary group transition-all hover:translate-y-[-4px] shadow-xl">
				<div class="max-w-[70%] relative z-10">
					<h3 class="text-3xl font-semibold text-white leading-tight mb-8">
						Got a plan? Propose your project here!</h3>
					<a
						class="inline-flex items-center px-8 py-4 bg-primary text-white rounded-full font-bold hover:bg-orange-600 transition-colors shadow-lg"
						href="#"> New Project Idea </a>
				</div>
				<div class="absolute right-8 bottom-8">
					<span
						class="material-symbols-outlined text-[160px] text-white/10 select-none">lightbulb</span>
				</div>
				<div
					class="absolute -top-12 -right-12 w-40 h-40 bg-primary/5 rounded-full"></div>
			</div>
			<div
				class="bg-charcoal dark:bg-charcoal p-10 rounded-3xl relative overflow-hidden flex flex-col justify-between h-[360px] border-l-8 border-primary group transition-all hover:translate-y-[-4px] shadow-xl">
				<div class="max-w-[70%] relative z-10">
					<h3 class="text-3xl font-semibold text-white leading-tight mb-8">
						Review pending department requests.</h3>
					<a
						class="inline-flex items-center px-8 py-4 bg-primary text-white rounded-full font-bold hover:bg-orange-600 transition-colors shadow-lg"
						href="#"> View Requests </a>
				</div>
				<div class="absolute right-8 bottom-8">
					<span
						class="material-symbols-outlined text-[160px] text-white/10 select-none">assignment</span>
				</div>
				<div
					class="absolute -top-12 -right-12 w-40 h-40 bg-primary/5 rounded-full"></div>
			</div>
			<div
				class="bg-charcoal dark:bg-charcoal p-10 rounded-3xl relative overflow-hidden flex flex-col justify-between h-[360px] border-l-8 border-primary group transition-all hover:translate-y-[-4px] shadow-xl">
				<div class="max-w-[70%] relative z-10">
					<h3 class="text-3xl font-semibold text-white leading-tight mb-8">
						Generate monthly performance reports.</h3>
					<a
						class="inline-flex items-center px-8 py-4 bg-primary text-white rounded-full font-bold hover:bg-orange-600 transition-colors shadow-lg"
						href="#"> Generate Report </a>
				</div>
				<div class="absolute right-8 bottom-8">
					<span
						class="material-symbols-outlined text-[160px] text-white/10 select-none">bar_chart</span>
				</div>
				<div
					class="absolute -top-12 -right-12 w-40 h-40 bg-primary/5 rounded-full"></div>
			</div>
		</div>
	</main>

</body>
</html>