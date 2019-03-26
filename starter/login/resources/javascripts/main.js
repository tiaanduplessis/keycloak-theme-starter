(function() {
  handleMessage();
  handleResetFlow();
  handleDisableResetBtn();
  handleBackAction();

  function handleBackAction() {
    const backBtn = document.querySelector(".js-back-btn");

    if (backBtn) {
      backBtn.addEventListener("click", function() {
        window.history.back();
      });
    }
  }

  function handleDisableResetBtn() {
    const resetBtn = document.querySelector(".js-button-reset");
    const resetInput = document.querySelector(".js-reset-input");

    if (resetBtn && resetInput) {
      resetBtn.classList.add("disabled");

      resetInput.addEventListener("keyup", function(e) {
        const val = e.target.value;

        if (val.length > 0) {
          resetBtn.classList.remove("disabled");
        }
        if (!resetBtn.classList.contains("disabled") && val.length === 0) {
          resetBtn.classList.add("disabled");
        }
      });
    }
  }

  function handleMessage() {
    const msg = document.querySelector(".js-message-text");
    if (msg && msg.dataset.content.length > 0) {
      const msgContainer = document.querySelector(".js-message-container");

      if (msgContainer) {
        msgContainer.textContent = msg.dataset.content;
        msgContainer.style.display = "block";
        msgContainer.classList.add(msg.dataset.type);
      }
    }
  }

  function handleResetFlow() {
    // HACK:  We add the .reset-form class after load to js-form-container
    //        since the parent template can't be accessed.
    const isResetFlow = !!document.querySelector(".js-reset-form");

    if (isResetFlow) {
      console.log("on reset");
      const container = document.querySelector(".js-form-container");

      if (container) {
        container.classList.add("reset-form-container");
      }
    }
  }
})();
