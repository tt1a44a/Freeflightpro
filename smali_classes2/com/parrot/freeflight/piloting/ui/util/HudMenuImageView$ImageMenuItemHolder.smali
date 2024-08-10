.class public Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;
.super Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
.source "HudMenuImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImageMenuItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImageRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "imageRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;-><init>(I)V

    .line 21
    iput p2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;->mImageRes:I

    .line 22
    return-void
.end method

.method synthetic constructor <init>(IILcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$1;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;-><init>(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;

    .prologue
    .line 15
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;->mImageRes:I

    return v0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;->mButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;->mImageRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;->mButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuImageView$ImageMenuItemHolder;->mButton:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :cond_0
    return-void
.end method
