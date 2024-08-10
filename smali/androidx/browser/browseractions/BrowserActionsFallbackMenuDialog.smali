.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;
.super Landroid/app/Dialog;
.source "BrowserActionsFallbackMenuDialog.java"


# static fields
.field private static final ENTER_ANIMATION_DURATION_MS:J = 0xfaL

.field private static final EXIT_ANIMATION_DURATION_MS:J = 0x96L


# instance fields
.field private final mContentView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentView"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->mContentView:Landroid/view/View;

    .line 43
    return-void
.end method

.method static synthetic access$001(Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;)V
    .locals 0
    .param p0, "x0"    # Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private startAnimation(Z)V
    .locals 6
    .param p1, "isEnterAnimation"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 68
    if-eqz p1, :cond_0

    move v2, v4

    .line 69
    .local v2, "from":F
    :goto_0
    if-eqz p1, :cond_1

    .line 70
    .local v3, "to":F
    :goto_1
    if-eqz p1, :cond_2

    const-wide/16 v0, 0xfa

    .line 71
    .local v0, "duration":J
    :goto_2
    iget-object v4, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleX(F)V

    .line 72
    iget-object v4, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleY(F)V

    .line 74
    iget-object v4, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 75
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 76
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 77
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v5}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    .line 78
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;

    invoke-direct {v5, p0, p1}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog$1;-><init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;Z)V

    .line 79
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 87
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 88
    return-void

    .end local v0    # "duration":J
    .end local v2    # "from":F
    .end local v3    # "to":F
    :cond_0
    move v2, v3

    .line 68
    goto :goto_0

    .restart local v2    # "from":F
    :cond_1
    move v3, v4

    .line 69
    goto :goto_1

    .line 70
    .restart local v3    # "to":F
    :cond_2
    const-wide/16 v0, 0x96

    goto :goto_2
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->startAnimation(Z)V

    .line 65
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->dismiss()V

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 48
    .local v0, "dialogWindow":Landroid/view/Window;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->startAnimation(Z)V

    .line 50
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 51
    return-void
.end method
