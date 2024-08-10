.class public Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;
.super Landroid/widget/LinearLayout;
.source "FollowMeFirstUseView.java"


# instance fields
.field private mGotItButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSelectionImageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00ff

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->setVisibility(I)V

    .line 100
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 52
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "context":Landroid/content/Context;
    const v3, 0x7f0a0461

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    .local v2, "titleTextView":Landroid/widget/TextView;
    const v3, 0x7f0a0368

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, "descriptionTextView":Landroid/widget/TextView;
    const v3, 0x7f0a0079

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->mGotItButton:Landroid/widget/Button;

    .line 58
    const v3, 0x7f0a01eb

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->mSelectionImageView:Landroid/widget/ImageView;

    .line 61
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->mGotItButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->mGotItButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f050042

    invoke-static {v0, v4, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-static {v0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 65
    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 66
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->mGotItButton:Landroid/widget/Button;

    invoke-static {v0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public setOnPositiveClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->mGotItButton:Landroid/widget/Button;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView$1;

    invoke-direct {v1, p0, p1}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    if-nez p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07005f

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->mSelectionImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 76
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->mSelectionImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 81
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->mSelectionImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
