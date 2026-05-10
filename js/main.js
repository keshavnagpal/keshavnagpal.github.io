// Reveal animations
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('reveal-visible');
        }
    });
}, observerOptions);

// Target sections, timeline items, stack groups, tools, and curiosities for reveal
document.querySelectorAll('section, .timeline-item, .stack-group, .tool-card, .curiosities-text').forEach(el => {
    el.classList.add('reveal');
    observer.observe(el);
});

// Dynamic Reveal Styles
const style = document.createElement('style');
style.textContent = `
    .reveal {
        opacity: 0;
        transform: translateY(20px);
        transition: opacity 1s ease, transform 1s cubic-bezier(0.2, 0.8, 0.2, 1);
    }
    .reveal-visible {
        opacity: 1;
        transform: translateY(0);
    }
`;
document.head.appendChild(style);
