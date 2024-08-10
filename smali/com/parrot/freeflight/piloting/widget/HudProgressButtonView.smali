.class public Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;
.super Landroid/widget/FrameLayout;
.source "HudProgressButtonView.java"


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41
    const v0, 0x7f0a01bb

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mTextView:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 43
    const v0, 0x7f0a01b9

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mImageView:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f0a01ba

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 47
    return-void
.end method

.method public setContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 93
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 55
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1
    .param p1, "maxProgress"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 63
    return-void
.end method

.method public setProcessing(Z)V
    .locals 2
    .param p1, "processing"    # Z

    .prologue
    .line 50
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 59
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public setTextResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    return-void
.end method

.method public showImage(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 74
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/HudProgressButtonView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    return-void

    .line 74
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
