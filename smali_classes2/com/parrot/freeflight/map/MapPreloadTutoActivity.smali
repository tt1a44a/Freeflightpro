.class public Lcom/parrot/freeflight/map/MapPreloadTutoActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MapPreloadTutoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v3, 0x7f0c0045

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/map/MapPreloadTutoActivity;->setContentView(I)V

    .line 19
    const v3, 0x7f0a02a0

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/map/MapPreloadTutoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 20
    .local v2, "root":Landroid/view/View;
    const v3, 0x7f0a008e

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/map/MapPreloadTutoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 21
    .local v1, "okButton":Landroid/widget/Button;
    const v3, 0x7f0a008d

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/map/MapPreloadTutoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 23
    .local v0, "backButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/parrot/freeflight/map/MapPreloadTutoActivity$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/map/MapPreloadTutoActivity$1;-><init>(Lcom/parrot/freeflight/map/MapPreloadTutoActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance v3, Lcom/parrot/freeflight/map/MapPreloadTutoActivity$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/map/MapPreloadTutoActivity$2;-><init>(Lcom/parrot/freeflight/map/MapPreloadTutoActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 40
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f050042

    invoke-static {p0, v3, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method
