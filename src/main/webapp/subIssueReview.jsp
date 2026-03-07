<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="dark" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Issue Verification &amp; Management Details</title>
<script src="https://cdn.tailwindcss.com?plugins=forms,typography"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;display=swap"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />
<script>
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					primary : "#F59E0B", // Vibrant Orange
					"background-light" : "#F3F4F6",
					"background-dark" : "#1E2127",
					"card-dark" : "#282C34",
					"sidebar-dark" : "#171A1F"
				},
				fontFamily : {
					display : [ "Inter", "sans-serif" ],
				},
				borderRadius : {
					DEFAULT : "0.75rem",
				},
			},
		},
	};
</script>
<style>
body {
	font-family: 'Inter', sans-serif;
	overflow: hidden;
}

.custom-scrollbar::-webkit-scrollbar {
	width: 6px;
}

.custom-scrollbar::-webkit-scrollbar-track {
	background: transparent;
}

.custom-scrollbar::-webkit-scrollbar-thumb {
	background: #3f4451;
	border-radius: 10px;
}

.sidebar-item-active {
	background: linear-gradient(90deg, rgba(245, 158, 11, 0.1) 0%,
		rgba(245, 158, 11, 0) 100%);
	border-right: 4px solid #F59E0B;
}
</style>
</head>
<body
	class="bg-background-light dark:bg-background-dark text-slate-900 dark:text-slate-100 h-screen flex">
	<aside
		class="w-64 flex-shrink-0 bg-white dark:bg-sidebar-dark border-r border-slate-200 dark:border-slate-800 flex flex-col">
		<div class="p-6">
			<div
				class="bg-gradient-to-br from-indigo-600 to-purple-600 p-4 rounded-xl flex items-center space-x-3 mb-8 shadow-lg">
				<div
					class="w-10 h-10 rounded-full bg-white/20 flex items-center justify-center font-bold text-white">G</div>
				<div>
					<h3
						class="text-xs font-bold text-white uppercase tracking-wider leading-tight">Gomes</h3>
					<p
						class="text-[10px] text-indigo-100 opacity-80 uppercase tracking-tight">Sub-Dept
						Coordinator</p>
				</div>
			</div>
			<nav class="space-y-1">
				<a
					class="flex items-center px-4 py-3 text-slate-500 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-slate-800 rounded-lg transition-colors group"
					href="#"> <span class="material-icons mr-3 text-lg">dashboard</span>
					<span class="text-sm font-medium">Dashboard</span>
				</a> <a
					class="flex items-center px-4 py-3 sidebar-item-active text-primary group"
					href="#"> <span class="material-icons mr-3 text-lg">report_problem</span>
					<span class="text-sm font-medium">Reported Issues</span>
				</a> <a
					class="flex items-center px-4 py-3 text-slate-500 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-slate-800 rounded-lg transition-colors group"
					href="#"> <span class="material-icons mr-3 text-lg">check_circle</span>
					<span class="text-sm font-medium">Resolved Cases</span>
				</a> <a
					class="flex items-center px-4 py-3 text-slate-500 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-slate-800 rounded-lg transition-colors group"
					href="#"> <span class="material-icons mr-3 text-lg">person</span>
					<span class="text-sm font-medium">Profile</span>
				</a>
			</nav>
		</div>
		<div
			class="mt-auto p-6 border-t border-slate-200 dark:border-slate-800">
			<a
				class="flex items-center px-4 py-3 text-red-500 hover:bg-red-50 dark:hover:bg-red-500/10 rounded-lg transition-colors group"
				href="#"> <span class="material-icons mr-3 text-lg">logout</span>
				<span class="text-sm font-medium">Log Out</span>
			</a>
		</div>
	</aside>
	<main class="flex-1 flex flex-col h-screen">
		<header
			class="h-16 border-b border-slate-200 dark:border-slate-800 flex items-center justify-between px-8 flex-shrink-0">
			<div class="flex items-center space-x-2">
				<span class="text-slate-400 text-sm">Reported Issues</span> <span
					class="material-icons text-slate-400 text-sm">chevron_right</span>
				<span class="text-slate-900 dark:text-white font-semibold text-sm">Issue
					#WTR-402</span>
			</div>
			<div class="flex items-center space-x-4">
				<button
					class="w-10 h-10 rounded-full bg-slate-100 dark:bg-slate-800 flex items-center justify-center text-slate-600 dark:text-slate-300 hover:bg-slate-200 dark:hover:bg-slate-700 transition-colors">
					<span class="material-icons text-xl">search</span>
				</button>
				<button
					class="w-10 h-10 rounded-full bg-slate-100 dark:bg-slate-800 flex items-center justify-center text-slate-600 dark:text-slate-300 hover:bg-slate-200 dark:hover:bg-slate-700 transition-colors relative">
					<span class="material-icons text-xl">notifications</span> <span
						class="absolute top-2 right-2 w-2 h-2 bg-red-500 rounded-full border-2 border-white dark:border-sidebar-dark"></span>
				</button>
			</div>
		</header>
		<div class="flex-1 overflow-hidden p-8 flex gap-8">
			<div class="flex-[1.5] overflow-y-auto custom-scrollbar pr-2">
				<div class="mb-6 flex items-center justify-between">
					<div>
						<h1 class="text-2xl font-bold text-slate-900 dark:text-white mb-1">Issue
							Verification</h1>
						<p class="text-slate-500 dark:text-slate-400 text-sm">Reviewing
							submission from Panaji District Coordinator</p>
					</div>
					<span
						class="px-3 py-1 bg-blue-100 dark:bg-blue-500/20 text-blue-600 dark:text-blue-400 text-xs font-bold rounded-full uppercase tracking-wider">Under
						Review</span>
				</div>
				<div class="space-y-6">
					<section
						class="bg-white dark:bg-card-dark p-6 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<div class="grid grid-cols-2 gap-6">
							<div class="col-span-2">
								<label
									class="text-xs font-bold text-slate-400 uppercase tracking-widest mb-2 block">Report
									Title</label>
								<p class="text-lg font-semibold text-slate-900 dark:text-white">Water
									Leakage in Main Square Pipe</p>
							</div>
							<div class="col-span-2">
								<label
									class="text-xs font-bold text-slate-400 uppercase tracking-widest mb-2 block">Detailed
									Description</label>
								<p
									class="text-sm text-slate-600 dark:text-slate-300 leading-relaxed">The
									main water supply pipe under the cobblestones in the North-East
									corner of the Main Square has burst. Water is pooling
									significantly, affecting local shop access and creating a slip
									hazard. This has been active for approximately 4 hours.</p>
							</div>
							<div class="col-span-2">
								<label
									class="text-xs font-bold text-slate-400 uppercase tracking-widest mb-2 block">Suggestions
									from Reporter</label>
								<p class="text-sm text-slate-600 dark:text-slate-300 italic">"Recommend
									immediate shutoff of the Sector 4 valve and replacement of the
									8-inch gasket."</p>
							</div>
						</div>
					</section>
					<section
						class="bg-white dark:bg-card-dark p-6 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<h3
							class="text-sm font-bold text-slate-900 dark:text-white mb-4 flex items-center">
							<span class="material-icons text-primary mr-2 text-base">location_on</span>
							Location Details
						</h3>
						<div class="grid grid-cols-3 gap-4">
							<div>
								<label
									class="text-[10px] font-bold text-slate-400 uppercase tracking-widest mb-1 block">District</label>
								<p
									class="text-sm font-medium text-slate-900 dark:text-slate-200">North
									Goa</p>
							</div>
							<div>
								<label
									class="text-[10px] font-bold text-slate-400 uppercase tracking-widest mb-1 block">Taluka</label>
								<p
									class="text-sm font-medium text-slate-900 dark:text-slate-200">Tiswadi</p>
							</div>
							<div>
								<label
									class="text-[10px] font-bold text-slate-400 uppercase tracking-widest mb-1 block">Pincode</label>
								<p
									class="text-sm font-medium text-slate-900 dark:text-slate-200">403001</p>
							</div>
							<div class="col-span-3 pt-2">
								<label
									class="text-[10px] font-bold text-slate-400 uppercase tracking-widest mb-1 block">Specific
									Location Description</label>
								<p class="text-sm text-slate-600 dark:text-slate-300">Near
									the old banyan tree, directly opposite the primary school gate.</p>
							</div>
						</div>
					</section>
					<section
						class="bg-white dark:bg-card-dark p-6 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm">
						<h3
							class="text-sm font-bold text-slate-900 dark:text-white mb-4 flex items-center">
							<span class="material-icons text-primary mr-2 text-base">collections</span>
							Attached Proof
						</h3>
						<div class="grid grid-cols-4 gap-3">
							<div
								class="aspect-square rounded-lg overflow-hidden border border-slate-200 dark:border-slate-700 bg-slate-100 dark:bg-slate-800">
								<img alt="Water Leakage Detail"
									class="w-full h-full object-cover hover:scale-110 transition-transform duration-500 cursor-zoom-in"
									src="https://lh3.googleusercontent.com/aida-public/AB6AXuBM6U786ehlw8WoVyxJgBfg0KKSbnwWSGGkbF9u3aiisTzrl5AqWxd2tLSdLPfXlDVkRtAMEzYWeZzxHgSZ1Lu2VRNB8-LTA8jKN2UJghho0YdAEua2Z28HUK25HaS_j3M5KUka_LTrsX8MnQNgwttvqzQkzWijm_hH8AwPBVFyknexzFjB2fHzLHQf3BRGVAQEZHw95RVWAHr_RaOYBahrX8QWHOqfF4ZHIVMFMMn7vSfTzj7CDHt41LHs_Tqzn-9peli-5ZYdPDA" />
							</div>
							<div
								class="aspect-square rounded-lg overflow-hidden border border-slate-200 dark:border-slate-700 bg-slate-100 dark:bg-slate-800">
								<img alt="Repair area context"
									class="w-full h-full object-cover hover:scale-110 transition-transform duration-500 cursor-zoom-in"
									src="https://lh3.googleusercontent.com/aida-public/AB6AXuBPMU0wrg73iwQGM-I-IGy1hpuTR2A6KMSm2jM62XE80g2r4DVZReUGKLID-Rf1VBv7lWT7w25FCutg-zLv4qtunth6tS5xibS05DKoZcVqkgdYCT_-wKVGB1yOnHiG905Kui3RQBvDZbKv9b80p4eqGRUJGWWM9PrmJibkJx8hg_ePQUJ1bYe-FsspLI801b9Oac4XD3SVG7ZFnRvOSkEW8vTsvXOzWLGRT755pIwsl_EDIEd0IE84k6KrbLufZQOkfgqVNx8pTzc" />
							</div>
							<div
								class="aspect-square rounded-lg overflow-hidden border border-slate-200 dark:border-slate-700 bg-slate-100 dark:bg-slate-800 flex items-center justify-center flex-col text-slate-400">
								<span class="material-icons">add_photo_alternate</span> <span
									class="text-[10px] mt-1 font-medium">Empty Slot</span>
							</div>
							<div
								class="aspect-square rounded-lg overflow-hidden border border-slate-200 dark:border-slate-700 bg-slate-100 dark:bg-slate-800 flex items-center justify-center flex-col text-slate-400">
								<span class="material-icons">add_photo_alternate</span> <span
									class="text-[10px] mt-1 font-medium">Empty Slot</span>
							</div>
						</div>
					</section>
				</div>
			</div>
			<div class="flex-1 flex flex-col gap-6">
				<div
					class="bg-white dark:bg-card-dark p-6 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-xl flex flex-col h-full">
					<div class="flex items-center space-x-2 mb-6">
						<div class="w-2 h-6 bg-primary rounded-full"></div>
						<h2 class="text-lg font-bold text-slate-900 dark:text-white">Action
							Center</h2>
					</div>
					<div class="space-y-6 flex-1 overflow-y-auto custom-scrollbar pr-1">
						<div>
							<label
								class="text-xs font-bold text-slate-400 uppercase tracking-widest mb-3 block">Set
								Priority</label>
							<div class="grid grid-cols-3 gap-2">
								<button
									class="py-2.5 rounded-lg border-2 border-red-500/30 bg-red-500/10 text-red-600 dark:text-red-400 text-xs font-bold transition-all hover:bg-red-500/20 active:scale-95">HIGH</button>
								<button
									class="py-2.5 rounded-lg border-2 border-slate-200 dark:border-slate-700 bg-transparent text-slate-400 text-xs font-bold transition-all hover:border-primary/50 hover:text-primary active:scale-95">MODERATE</button>
								<button
									class="py-2.5 rounded-lg border-2 border-slate-200 dark:border-slate-700 bg-transparent text-slate-400 text-xs font-bold transition-all hover:border-green-500/50 hover:text-green-500 active:scale-95">LOW</button>
							</div>
						</div>
						<div>
							<label
								class="text-xs font-bold text-slate-400 uppercase tracking-widest mb-3 block">Update
								Status</label>
							<div class="relative">
								<select
									class="w-full appearance-none bg-slate-50 dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl px-4 py-3 text-sm focus:ring-2 focus:ring-primary focus:border-transparent outline-none text-slate-900 dark:text-white">
									<option value="approved">Approved</option>
									<option selected="" value="in_process">In Process</option>
									<option value="completed">Completed</option>
									<option value="rejected">Rejected</option>
								</select>
								<div
									class="absolute inset-y-0 right-4 flex items-center pointer-events-none">
									<span class="material-icons text-slate-400">expand_more</span>
								</div>
							</div>
						</div>
						<div>
							<label
								class="text-xs font-bold text-slate-400 uppercase tracking-widest mb-3 block">Estimated
								Completion</label>
							<div class="relative">
								<input
									class="w-full bg-slate-50 dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl px-4 py-3 text-sm focus:ring-2 focus:ring-primary focus:border-transparent outline-none text-slate-900 dark:text-white"
									type="date" value="2025-03-24" />
								<div
									class="absolute inset-y-0 right-4 flex items-center pointer-events-none">
									<span class="material-icons text-slate-400 text-sm">calendar_today</span>
								</div>
							</div>
						</div>
						<div class="flex-1 flex flex-col">
							<label
								class="text-xs font-bold text-slate-400 uppercase tracking-widest mb-3 block">Internal
								Resolution Notes</label>
							<textarea
								class="w-full flex-1 min-h-[120px] bg-slate-50 dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-xl px-4 py-3 text-sm focus:ring-2 focus:ring-primary focus:border-transparent outline-none text-slate-900 dark:text-white resize-none"
								placeholder="Add internal notes or instructions for field workers..."></textarea>
						</div>
					</div>
					<div class="mt-8 space-y-3">
						<button
							class="w-full bg-primary hover:bg-amber-600 text-white font-bold py-4 rounded-xl shadow-lg shadow-primary/20 transition-all flex items-center justify-center space-x-2 active:scale-[0.98]"
							onclick="window.location.href='#'">
							<span class="material-icons text-xl">save</span> <span>Save
								&amp; Update Report</span>
						</button>
						<button
							class="w-full bg-transparent border border-red-500/50 hover:bg-red-500/10 text-red-500 font-bold py-4 rounded-xl transition-all flex items-center justify-center space-x-2 active:scale-[0.98]"
							onclick="window.location.href='#'">
							<span class="material-icons text-xl">delete_outline</span> <span>Delete
								/ Reject Report</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</main>

</body>
</html>