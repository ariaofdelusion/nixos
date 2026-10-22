{
  programs.starship = {
    enable = true;

    settings = {
      "$schema" = "https://starship.rs/config-schema.json";

      format = "$all";
      right_format = "";
      continuation_prompt = "[∙](bright-black) ";
      scan_timeout = 30;
      command_timeout = 1000;
      add_newline = false;

      username = {
        format = " [╭─$user]($style)@";
        style_user = "bold red";
        style_root = "bold red";
        show_always = true;
      };

      hostname = {
        format = "[$hostname]($style) in ";
        style = "bold dimmed red";
        trim_at = "-";
        ssh_only = false;
        disabled = false;
      };

      directory = {
        style = "purple";
        truncation_length = 0;
        truncate_to_repo = true;
        truncation_symbol = "repo: ";
      };

      cmd_duration = {
        min_time = 1;
        format = "took [$duration]($style)";
        disabled = false;
      };

      battery = {
        full_symbol = " ";
        charging_symbol = " ";
        discharging_symbol = " ";
        disabled = true;

        display = [
          {
            threshold = 15;
            style = "bold red";
            disabled = true;
          }
          {
            threshold = 50;
            style = "bold yellow";
            disabled = true;
          }
          {
            threshold = 80;
            style = "bold green";
            disabled = true;
          }
        ];
      };

      time = {
        format = " 🕙 $time($style)\n";
        time_format = "%T";
        style = "bright-white";
        disabled = true;
      };

      character = {
        success_symbol = " [╰─λ](bold red)";
        error_symbol = " [×](bold red)";
      };

      c = {
        format = "via [$symbol($version(-$name) )]($style)";
        version_format = "v\${raw}";
        style = "149 bold";
        symbol = "C ";
        disabled = false;
        detect_extensions = [
          "c"
          "h"
        ];
        detect_files = [];
        detect_folders = [];
        commands = [
          ["cc" "--version"]
          ["gcc" "--version"]
          ["clang" "--version"]
        ];
      };

      cmake = {
        format = "via [$symbol($version )]($style)";
        version_format = "v\${raw}";
        symbol = "△ ";
        style = "bold blue";
        disabled = false;
        detect_extensions = [];
        detect_files = [
          "CMakeLists.txt"
          "CMakeCache.txt"
        ];
        detect_folders = [];
      };

      conda.symbol = " ";
      dart.symbol = " ";
      elixir.symbol = " ";
      elm.symbol = " ";
      golang.symbol = " ";
      haskell.symbol = " ";
      hg_branch.symbol = " ";
      julia.symbol = " ";
      nim.symbol = " ";
      nix_shell.symbol = " ";
      package.symbol = " ";
      perl.symbol = " ";
      php.symbol = " ";
      ruby.symbol = " ";
      rust.symbol = " ";
      swift.symbol = "ﯣ ";

      git_branch = {
        format = "on [$symbol$branch]($style)(:[$remote]($style)) ";
        symbol = "🌱 ";
        style = "bold purple";
        truncation_length = 9223372036854775807;
        truncation_symbol = "…";
        only_attached = false;
        always_show_remote = false;
        ignore_branches = [];
        disabled = false;
      };

      git_commit = {
        commit_hash_length = 7;
        format = "[\\($hash$tag\\)]($style) ";
        style = "green bold";
        only_detached = true;
        disabled = false;
        tag_symbol = " 🏷  ";
        tag_disabled = true;
      };

      git_metrics = {
        added_style = "bold green";
        deleted_style = "bold red";
        only_nonzero_diffs = true;
        format = "([+$added]($added_style) )([-$deleted]($deleted_style) )";
        disabled = true;
      };

      git_state = {
        rebase = "REBASING";
        merge = "MERGING";
        revert = "REVERTING";
        cherry_pick = "CHERRY-PICKING";
        bisect = "BISECTING";
        am = "AM";
        am_or_rebase = "AM/REBASE";
        style = "bold yellow";
        format = "\\([$state( $progress_current/$progress_total)]($style) ";
        disabled = false;
      };

      git_status = {
        format = "([\\[$all_status$ahead_behind\\]]($style) )";
        style = "red bold";
        stashed = "\\$";
        ahead = "⇡";
        behind = "⇣";
        up_to_date = "";
        diverged = "⇕";
        conflicted = "=";
        deleted = "✘";
        renamed = "»";
        modified = "!";
        staged = "+";
        untracked = "?";
        ignore_submodules = false;
        disabled = false;
      };

      java = {
        disabled = false;
        format = "via [$symbol($version )]($style)";
        version_format = "v\${raw}";
        style = "red dimmed";
        symbol = "☕ ";
        detect_extensions = [
          "java"
          "class"
          "jar"
          "gradle"
          "clj"
          "cljc"
        ];
        detect_files = [
          "pom.xml"
          "build.gradle.kts"
          "build.sbt"
          ".java-version"
          "deps.edn"
          "project.clj"
          "build.boot"
        ];
        detect_folders = [];
      };

      kotlin = {
        format = "via [$symbol($version )]($style)";
        version_format = "v\${raw}";
        symbol = "🅺 ";
        style = "bold blue";
        kotlin_binary = "kotlin";
        disabled = false;
        detect_extensions = [
          "kt"
          "kts"
        ];
        detect_files = [];
        detect_folders = [];
      };

      nodejs = {
        format = "via [$symbol($version )]($style)";
        version_format = "v\${raw}";
        symbol = " ";
        style = "bold green";
        disabled = false;
        not_capable_style = "bold red";
        detect_extensions = [
          "js"
          "mjs"
          "cjs"
          "ts"
          "mts"
          "cts"
        ];
        detect_files = [
          "package.json"
          ".node-version"
          ".nvmrc"
        ];
        detect_folders = ["node_modules"];
      };

      python = {
        pyenv_version_name = false;
        pyenv_prefix = "pyenv ";
        python_binary = [
          "python"
          "python3"
          "python2"
        ];
        format = "via [\${symbol}\${pyenv_prefix}(\${version} )(\($virtualenv\) )]($style)";
        version_format = "v\${raw}";
        style = "yellow bold";
        symbol = "🐍 ";
        disabled = false;
        detect_extensions = ["py"];
        detect_files = [
          "requirements.txt"
          ".python-version"
          "pyproject.toml"
          "Pipfile"
          "tox.ini"
          "setup.py"
          "__init__.py"
        ];
        detect_folders = [];
      };

      status = {
        format = "[$symbol$status]($style) ";
        symbol = "✖";
        success_symbol = "";
        not_executable_symbol = "🚫";
        not_found_symbol = "🔍";
        sigint_symbol = "🧱";
        signal_symbol = "⚡";
        style = "bold red";
        map_symbol = false;
        recognize_signal_code = true;
        pipestatus = false;
        pipestatus_separator = "|";
        pipestatus_format = "\\[$pipestatus\\] => [$symbol$common_meaning$signal_name$maybe_int]($style)";
        disabled = true;
      };

      gcloud.format = "";
    };
  };
}