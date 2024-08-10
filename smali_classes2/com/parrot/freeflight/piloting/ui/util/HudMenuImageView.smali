.class public Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;
.super Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;
.source "HudMenuImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public addItem(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "drawableRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->mItemList:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;-><init>(IILcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method protected getDefaultItemLayout()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0c00ad

    return v0
.end method

.method protected updateMenuButton(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;)V
    .locals 3
    .param p1, "item"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->mMenuButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .local v0, "menuButton":Landroid/widget/ImageView;
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;

    .end local p1    # "item":Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
    invoke-static {p1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;->access$000(Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_0
    return-void
.end method
