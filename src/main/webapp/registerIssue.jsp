<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="dark" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Citizen Issue Reporting Page - Goa Portal</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;display=swap"
	rel="stylesheet" />
<script>
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					primary : "#3B82F6",
					accent : "#FFA500",
					"background-light" : "#F3F4F6",
					"background-dark" : "#1A1C1E",
					"card-dark" : "#2E3137",
				},
				fontFamily : {
					display : [ "Inter", "sans-serif" ],
				},
				borderRadius : {
					DEFAULT : "1rem",
					'xl' : '1.5rem',
					'2xl' : '2.5rem',
				},
			},
		},
	};
</script>
<style type="text/tailwindcss">
        body {
            font-family: "Inter", sans-serif
        }
        .gradient-header {
            background: linear-gradient(135deg, #3b82f6 0%, #6366f1 100%)
        }
        .custom-scrollbar::-webkit-scrollbar {
            width: 6px
        }
        .custom-scrollbar::-webkit-scrollbar-track {
            background: #2E3137
        }
        .custom-scrollbar::-webkit-scrollbar-thumb {
            background: #4B5563;
            border-radius: 10px
        }
        .material-symbols-outlined {
            font-variation-settings: "FILL" 0, "wght" 400, "GRAD" 0, "opsz" 24
        }
    </style>
</head>
<body
	class="bg-background-light dark:bg-background-dark h-screen flex items-center justify-center p-2 md:p-4 overflow-hidden">
	<div
		class="max-w-5xl w-full bg-white dark:bg-card-dark rounded-xl shadow-2xl overflow-hidden border border-gray-200 dark:border-gray-800 flex flex-col h-full max-h-[96vh]">
		<div
			class="gradient-header py-3 px-6 text-center relative overflow-hidden flex-shrink-0">
			<h1 class="text-xl md:text-2xl font-bold text-white relative z-10">Create
				your report</h1>
			<p class="text-blue-100 text-xs relative z-10">Register your
				issue with location details</p>
			<div
				class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -mr-10 -mt-10 blur-2xl"></div>
			<div
				class="absolute bottom-0 left-0 w-24 h-24 bg-blue-400/20 rounded-full -ml-5 -mb-5 blur-xl"></div>
		</div>
		<div class="p-4 md:p-6 flex-grow overflow-hidden flex flex-col">
			<form action="RegisterIssue" method="post"
				class="flex flex-col h-full">
				<div
					class="grid grid-cols-1 md:grid-cols-2 gap-x-6 gap-y-4 items-start overflow-y-auto custom-scrollbar px-1">
					<div class="space-y-3">
						<div class="space-y-1">
							<label
								class="block text-xs font-semibold text-gray-700 dark:text-gray-300 ml-1">Report
								Title</label> <input name="title"
								class="w-full bg-gray-100 dark:bg-[#383C44] border-transparent focus:border-primary focus:ring-2 focus:ring-primary/20 rounded-lg py-2 px-3 text-sm text-gray-900 dark:text-white placeholder-gray-500 transition-all outline-none"
								placeholder="eg. Broken Street Light" type="text" />
						</div>
						<div class="space-y-1">
							<label
								class="block text-xs font-semibold text-gray-700 dark:text-gray-300 ml-1">Description</label>
							<textarea name="description"
								class="w-full bg-gray-100 dark:bg-[#383C44] border-transparent focus:border-primary focus:ring-2 focus:ring-primary/20 rounded-lg py-2 px-3 text-sm text-gray-900 dark:text-white placeholder-gray-500 transition-all outline-none resize-none"
								placeholder="Briefly describe your issue" rows="2"></textarea>
						</div>
						<div class="space-y-1">
							<label
								class="block text-xs font-semibold text-gray-700 dark:text-gray-300 ml-1">Suggestions</label>
							<textarea name="suggestion"
								class="w-full bg-gray-100 dark:bg-[#383C44] border-transparent focus:border-primary focus:ring-2 focus:ring-primary/20 rounded-lg py-2 px-3 text-sm text-gray-900 dark:text-white placeholder-gray-500 transition-all outline-none resize-none"
								placeholder="How can we fix this?" rows="2"></textarea>
						</div>
						<div class="space-y-1">
							<label
								class="block text-xs font-semibold text-gray-700 dark:text-gray-300 ml-1">
								Select Department </label>

							<div class="relative">
								<select name="department"
									class="w-full bg-gray-100 dark:bg-[#383C44] border-transparent 
                   focus:border-primary focus:ring-2 focus:ring-primary/20 
                   rounded-lg py-2 px-3 text-sm text-gray-900 dark:text-white 
                   transition-all outline-none appearance-none cursor-pointer">

									<option value="" disabled selected>Choose department</option>
									<option value="2002">Electricity Department</option>
									<option value="2001">Transport Department</option>
									<option value="2003">Water Department</option>
								</select>

								
							</div>
						</div>
					</div>
					<div class="space-y-3">
						<div class="space-y-1">
							<label
								class="block text-xs font-semibold text-gray-700 dark:text-gray-300 ml-1">Attach
								Images (Proof)</label> <a
								class="group block border-2 border-dashed border-gray-300 dark:border-gray-600 rounded-lg py-4 px-2 transition-all hover:border-primary dark:hover:border-primary bg-gray-50 dark:bg-[#383C44]/50 hover:bg-gray-100 dark:hover:bg-[#3e434a] cursor-pointer"
								href="#">
								<div
									class="flex flex-col items-center justify-center text-center">
									<span
										class="material-symbols-outlined text-2xl text-gray-400 dark:text-gray-500 group-hover:text-primary transition-colors">photo_camera</span>
									<p
										class="text-[11px] font-medium text-gray-600 dark:text-gray-400">Upload
										or drag photos</p>
								</div>
							</a>
						</div>
						<div class="grid grid-cols-2 gap-3">
							<div class="space-y-1">
								<label
									class="block text-xs font-semibold text-gray-700 dark:text-gray-300 ml-1">District</label>
								<input name="district"
									class="w-full bg-gray-100 dark:bg-[#383C44] border-transparent focus:border-primary focus:ring-2 focus:ring-primary/20 rounded-lg py-2 px-3 text-sm text-gray-900 dark:text-white placeholder-gray-500 transition-all outline-none"
									placeholder="North Goa" type="text" />
							</div>
							<div class="space-y-1">
								<label
									class="block text-xs font-semibold text-gray-700 dark:text-gray-300 ml-1">Taluka</label>
								<input name="taluka"
									class="w-full bg-gray-100 dark:bg-[#383C44] border-transparent focus:border-primary focus:ring-2 focus:ring-primary/20 rounded-lg py-2 px-3 text-sm text-gray-900 dark:text-white placeholder-gray-500 transition-all outline-none"
									placeholder="Tiswadi" type="text" />
							</div>
						</div>
						<div class="space-y-1">
							<label
								class="block text-xs font-semibold text-gray-700 dark:text-gray-300 ml-1">Pincode</label>
							<input name="pincode"
								class="w-full bg-gray-100 dark:bg-[#383C44] border-transparent focus:border-primary focus:ring-2 focus:ring-primary/20 rounded-lg py-2 px-3 text-sm text-gray-900 dark:text-white placeholder-gray-500 transition-all outline-none"
								placeholder="403001" type="text" />
						</div>
						<div
							class="bg-blue-50/50 dark:bg-blue-900/10 rounded-lg p-3 border border-blue-100 dark:border-blue-900/30 flex gap-3 items-start">
							<span
								class="material-symbols-outlined text-blue-500 text-lg flex-shrink-0">info</span>
							<p
								class="text-[10px] text-blue-700/80 dark:text-blue-300/80 leading-tight">
								Accurate Pincode and detailed Location Description helps our
								teams resolve issues faster.</p>
						</div>

					</div>
					<div class="md:col-span-2 space-y-1 mt-1">
						<label
							class="block text-xs font-semibold text-gray-700 dark:text-gray-300 ml-1">Location
							Description</label>
						<textarea name="locationDescription"
							class="w-full bg-gray-100 dark:bg-[#383C44] border-transparent focus:border-primary focus:ring-2 focus:ring-primary/20 rounded-lg py-2 px-3 text-sm text-gray-900 dark:text-white placeholder-gray-500 transition-all outline-none resize-none"
							placeholder="e.g. Near the old banyan tree, opposite the primary school"
							rows="1"></textarea>
					</div>
				</div>
				<div
					class="flex items-center justify-center pt-4 mt-auto border-t border-gray-100 dark:border-gray-700">
					<button type="submit"
class="w-full max-w-lg bg-orange-500 hover:bg-orange-600 text-white font-bold text-lg py-3 rounded-full text-center shadow-lg hover:shadow-orange-500/30 transition-all active:scale-[0.99] flex items-center justify-center gap-2">
    <span>Submit Report</span>
    <span class="material-symbols-outlined">send</span>
</button>
				</div>
			</form>
		</div>
	</div>
	<div
		class="fixed bottom-1 text-center w-full pointer-events-none opacity-40">
		<p
			class="text-[10px] text-gray-500 dark:text-gray-400 uppercase tracking-widest font-medium">Citizen
			Service Portal - Goa</p>
	</div>

</body>
</html>

