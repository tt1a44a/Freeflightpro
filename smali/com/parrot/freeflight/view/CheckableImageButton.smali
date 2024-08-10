.class public Lcom/parrot/freeflight/view/CheckableImageButton;
.super Landroid/support/v7/widget/AppCompatImageButton;
.source "CheckableImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final DRAWABLE_STATE_CHECKED:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/parrot/freeflight/view/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/view/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const v0, 0x7f0300cf

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/view/CheckableImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Lcom/parrot/freeflight/view/CheckableImageButton$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/view/CheckableImageButton$1;-><init>(Lcom/parrot/freeflight/view/CheckableImageButton;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 41
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/parrot/freeflight/view/CheckableImageButton;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/parrot/freeflight/view/CheckableImageButton;->mChecked:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/parrot/freeflight/view/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    array-length v0, v0

    add-int/2addr v0, p1

    .line 63
    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/view/CheckableImageButton;->DRAWABLE_STATE_CHECKED:[I

    .line 62
    invoke-static {v0, v1}, Lcom/parrot/freeflight/view/CheckableImageButton;->mergeDrawableStates([I[I)[I

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/parrot/freeflight/view/CheckableImageButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 45
    iput-boolean p1, p0, Lcom/parrot/freeflight/view/CheckableImageButton;->mChecked:Z

    .line 46
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/CheckableImageButton;->refreshDrawableState()V

    .line 47
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->sendAccessibilityEvent(I)V

    .line 50
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/parrot/freeflight/view/CheckableImageButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
