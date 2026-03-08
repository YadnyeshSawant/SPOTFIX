<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, beans.Issue"%>

<%
List<Issue> issues = (List<Issue>) request.getAttribute("issues");
%>
<!DOCTYPE html>
<html class="dark" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Updated Reported Issues List View</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
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
<style type="text/tailwindcss">
        body { font-family: 'Inter', sans-serif; overflow: hidden; }
        .custom-scrollbar::-webkit-scrollbar { width: 6px; }
        .custom-scrollbar::-webkit-scrollbar-track { background: transparent; }
        .custom-scrollbar::-webkit-scrollbar-thumb { background: #3f4451; border-radius: 10px; }
        .sidebar-item-active { background: linear-gradient(90deg, rgba(245, 158, 11, 0.1) 0%, rgba(245, 158, 11, 0) 100%); border-right: 4px solid #F59E0B; }
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
        }
    </style>
</head>
<body class="bg-background-light dark:bg-background-dark text-slate-900 dark:text-slate-100 h-screen flex">

	<jsp:include page="subDeptNavbar.jsp" />
	<main class="flex-1 flex flex-col h-screen ml-64">

<header
class="h-16 border-b border-slate-200 dark:border-slate-800 flex items-center justify-between px-8 flex-shrink-0">
			<div class="flex items-center space-x-2">
				<span class="text-slate-900 dark:text-white font-semibold text-sm">
Reported Issues
</span>

			</div>
			<div class="flex items-center space-x-4">
				<button
					class="w-10 h-10 rounded-full bg-slate-100 dark:bg-slate-800 flex items-center justify-center text-slate-600 dark:text-slate-300 hover:bg-slate-200 dark:hover:bg-slate-700 transition-colors">
					<span class="material-symbols-outlined text-xl">search</span>
				</button>
			</div>
		</header>
		<div class="flex-1 overflow-y-auto custom-scrollbar p-8">
			<div class="max-w-4xl mx-auto">

				<div class="space-y-4">

					<%
					if (issues != null && !issues.isEmpty()) {
						for (Issue i : issues) {
					%>

					<a
						class="block bg-white dark:bg-card-dark p-5 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm hover:border-primary/50 hover:shadow-md transition-all group"
						href="<%=request.getContextPath()%>/viewIssueDetails?issueId=<%=i.getIssue_id()%>">

						<div class="flex items-center justify-between">

							<div class="flex items-center space-x-4">

								<div
									class="w-12 h-12 rounded-xl bg-blue-100 dark:bg-blue-500/10 flex items-center justify-center text-blue-600 dark:text-blue-400">
									<span class="material-symbols-outlined">report</span>
								</div>

								<div>

									<div class="flex items-center space-x-2 mb-1">

										<span
											class="text-xs font-bold text-slate-400 uppercase tracking-widest">
											#ISSUE ID-<%=i.getIssue_id()%>
										</span> <span class="text-slate-300 dark:text-slate-600">•</span> <span
											class="text-xs font-medium text-slate-500 dark:text-slate-400">
											<%=i.getSubmitted_date()%>
										</span>

									</div>

									<h3
										class="text-base font-bold text-slate-900 dark:text-white group-hover:text-primary transition-colors">
										<%=i.getTitle()%>
									</h3>

									<p class="text-sm text-slate-500 dark:text-slate-400 mt-1">
										<%=i.getLocality()%>,
										<%=i.getDistrict()%>
									</p>

								</div>

							</div>

							<div class="flex items-center space-x-6">

								<span
									class="px-3 py-1 text-[10px] font-bold rounded-full uppercase tracking-wider
        <%=i.getIssue_status().equals("pending")
		? "bg-orange-100 text-orange-600 dark:bg-orange-500/20 dark:text-orange-400"
		:

		i.getIssue_status().equals("approved") ? "bg-green-100 text-green-600 dark:bg-green-500/20 dark:text-green-400"
				:

				i.getIssue_status().equals("in process")
						? "bg-blue-100 text-blue-600 dark:bg-blue-500/20 dark:text-blue-400"
						:

						"bg-teal-100 text-teal-600 dark:bg-teal-500/20 dark:text-teal-400"%>">

									<%=i.getIssue_status()%>

								</span> <span
									class="material-symbols-outlined text-slate-300 dark:text-slate-600 group-hover:text-primary transition-colors">
									chevron_right </span>

							</div>

						</div>

					</a>

					<%
					}
					} else {
					%>

					<div class="text-center py-12 text-slate-500 dark:text-slate-400">
						No Issues Found</div>

					<%
					}
					%>

				</div>
			</div>
		</div>
	</main>

</body>
</html>