.class public Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;
.super Landroid/widget/FrameLayout;
.source "RecordingVideoButtonView.java"


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 35
    const v0, 0x7f0a03b2

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->mImageView:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    const v0, 0x7f0a03b3

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 38
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    return-void
.end method

.method public setProcessing(Z)V
    .locals 2
    .param p1, "processing"    # Z

    .prologue
    .line 41
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingVideoButtonView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 42
    return-void

    .line 41
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
