document.addEventListener('DOMContentLoaded', function () {
    injectClearButton();
    handleClearButtonClick();
    handleThumbClicks();
    toggleClearButtonVisibility();
});

function injectClearButton() {
    const searchInput = document.querySelector('input[name="tx_ckfaq_pi1[term]"]');
    if (searchInput) {
        const wrapper = searchInput.parentElement;
        wrapper.style.position = 'relative';

        const clearBtn = document.createElement('i');
        clearBtn.classList.add('bi', 'bi-x-lg', 'clear-btn');
        clearBtn.title = 'Clear';
        clearBtn.style.display = searchInput.value ? 'block' : 'none';

        wrapper.appendChild(clearBtn);
    }
}

function handleClearButtonClick() {
    document.body.addEventListener('click', function (e) {
        if (e.target.classList.contains('clear-btn')) {
            const input = document.querySelector('input[name="tx_ckfaq_pi1[term]"]');
            if (input) {
                input.value = '';
                e.target.style.display = 'none';

                const form = input.closest('form');
                if (form) form.submit();
            }
        }
    });
}

function toggleClearButtonVisibility() {
    const input = document.querySelector('input[name="tx_ckfaq_pi1[term]"]');
    const clearBtn = document.querySelector('.clear-btn');

    if (input && clearBtn) {
        input.addEventListener('input', () => {
            clearBtn.style.display = input.value ? 'block' : 'none';
        });
    }
}

function handleThumbClicks() {
    document.querySelectorAll('.faq-feedback i').forEach(icon => {
        icon.addEventListener('click', () => {
            const container = icon.closest('.faq-feedback');
            container.querySelectorAll('i').forEach(i => i.classList.remove('active'));
            icon.classList.add('active');
        });
    });
}