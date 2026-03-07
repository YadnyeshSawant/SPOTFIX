<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Create Your Proposal | Citizen Service Portal</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;display=swap"
	rel="stylesheet" />
<style type="text/tailwindcss">
        :root {
            --primary: #ff851b;
            --surface-dark: #1E2127;
            --background-dark: #121212;
            --input-dark: #2a2d34;
        }
        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--background-dark);
        }
        .header-gradient {
            background: linear-gradient(90deg, #6366f1 0%, #a855f7 100%);
        }
        .custom-scrollbar::-webkit-scrollbar {
            width: 6px;
        }
        .custom-scrollbar::-webkit-scrollbar-track {
            background: transparent;
        }
        .custom-scrollbar::-webkit-scrollbar-thumb {
            background: #4b5563;
            border-radius: 10px;
        }
    </style>
</head>
<body class="min-h-screen flex items-center justify-center p-4">
	<div
		class="w-full max-w-5xl bg-[var(--surface-dark)] rounded-3xl shadow-2xl overflow-hidden border border-gray-800">
		<div class="header-gradient py-5 px-8 text-center text-white">
			<h1 class="text-2xl font-bold tracking-tight">Create your
				Proposal</h1>
			<p class="text-xs opacity-90 mt-0.5">Fill in with the details to
				get your proposal registered</p>
		</div>
		<form action="#" class="p-6 space-y-4" method="POST">
			<div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
				<div class="space-y-4">
					<div>
						<label
							class="block text-xs font-semibold text-gray-300 uppercase tracking-wider mb-1.5">Proposal
							Title</label> <input
							class="w-full bg-[var(--input-dark)] border-gray-700 rounded-lg px-4 py-2.5 text-white placeholder-gray-500 focus:ring-2 focus:ring-[var(--primary)] focus:border-transparent transition-all outline-none"
							placeholder="eg. New Public Park" type="text" />
					</div>
					<div>
						<label
							class="block text-xs font-semibold text-gray-300 uppercase tracking-wider mb-1.5">Brief
							Description</label>
						<textarea
							class="w-full bg-[var(--input-dark)] border-gray-700 rounded-lg px-4 py-2.5 text-white placeholder-gray-500 focus:ring-2 focus:ring-[var(--primary)] focus:border-transparent transition-all outline-none resize-none"
							placeholder="Briefly describe your proposal" rows="3"></textarea>
					</div>
					<div>
						<label
							class="block text-xs font-semibold text-gray-300 uppercase tracking-wider mb-1.5">Budget
							Estimation</label> <input
							class="w-full bg-[var(--input-dark)] border-gray-700 rounded-lg px-4 py-2.5 text-white placeholder-gray-500 focus:ring-2 focus:ring-[var(--primary)] focus:border-transparent transition-all outline-none"
							placeholder="Provide an estimated budget" type="text" />
					</div>
					<div>
						<label
							class="block text-xs font-semibold text-gray-300 uppercase tracking-wider mb-1.5">Location
							Description</label> <input
							class="w-full bg-[var(--input-dark)] border-gray-700 rounded-lg px-4 py-2.5 text-white placeholder-gray-500 focus:ring-2 focus:ring-[var(--primary)] focus:border-transparent outline-none"
							placeholder="e.g. Near the old banyan tree, opposite school"
							type="text" />
					</div>
				</div>
				<div class="space-y-4">
					<div>
						<label
							class="block text-xs font-semibold text-gray-300 uppercase tracking-wider mb-1.5">Attach
							Images (Concept)</label>
						<div
							class="border-2 border-dashed border-gray-700 rounded-xl py-4 px-4 text-center flex flex-col items-center justify-center space-y-1 hover:bg-gray-800/50 cursor-pointer transition-colors group">
							<span
								class="material-symbols-outlined text-gray-500 text-3xl group-hover:text-[var(--primary)] transition-colors">photo_camera</span>
							<p class="text-gray-300 text-sm font-medium">Click or drag
								images</p>
							<p class="text-[10px] text-gray-500">PNG, JPG up to 10MB</p>
						</div>
					</div>
					<div>
						<label
							class="block text-xs font-semibold text-gray-300 uppercase tracking-wider mb-1.5">Attach
							Document (PDF/DOC)</label>
						<div
							class="border-2 border-dashed border-gray-700 rounded-xl py-4 px-4 text-center flex flex-col items-center justify-center space-y-1 hover:bg-gray-800/50 cursor-pointer transition-colors group">
							<span
								class="material-symbols-outlined text-gray-500 text-3xl group-hover:text-[var(--primary)] transition-colors">description</span>
							<p class="text-gray-300 text-sm font-medium">Click or drag
								documents</p>
							<p class="text-[10px] text-gray-500">PDF, DOCX up to 20MB</p>
						</div>
					</div>
					<div class="pt-1">
						<label
							class="block text-xs font-semibold text-gray-300 uppercase tracking-wider mb-1.5">Select
							Department</label>
						<div class="relative">
							<select
								class="w-full bg-[var(--primary)] text-white appearance-none px-6 py-3 rounded-full font-bold cursor-pointer focus:outline-none focus:ring-4 focus:ring-orange-500/30 transition-shadow text-sm">
								<option>Choose Department</option>
								<option>Public Works Department</option>
								<option>Health &amp; Sanitation</option>
								<option>Electricity &amp; Energy</option>
								<option>Parks &amp; Recreation</option>
							</select>
							<div
								class="absolute right-6 top-1/2 -translate-y-1/2 pointer-events-none">
								<span class="material-symbols-outlined text-white text-xl">expand_more</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="bg-blue-900/20 border border-blue-800/30 rounded-xl p-3 flex items-start space-x-3">
				<span class="material-symbols-outlined text-blue-400 text-lg">info</span>
				<p class="text-[11px] text-blue-300 leading-relaxed">Detailed
					descriptions and complete documentation help our teams evaluate
					proposals faster. Ensure all mandatory files are attached before
					submission.</p>
			</div>
			<div class="pt-2 border-t border-gray-800">
				<button
					class="w-full bg-[var(--primary)] hover:bg-orange-600 text-white py-3.5 rounded-full font-bold text-lg flex items-center justify-center space-x-2 shadow-lg shadow-orange-500/20 transition-all transform active:scale-[0.98]"
					type="submit">
					<span>Submit Proposal</span> <span
						class="material-symbols-outlined">send</span>
				</button>
			</div>
		</form>
		<div class="bg-black/40 py-2.5 text-center border-t border-gray-800">
			<p
				class="text-[10px] uppercase tracking-widest text-gray-600 font-bold">Citizen
				Service Portal • Goa</p>
		</div>
	</div>

</body>
</html>