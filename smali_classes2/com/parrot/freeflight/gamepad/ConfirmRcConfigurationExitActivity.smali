.class public Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ConfirmRcConfigurationExitActivity.java"


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
    const v3, 0x7f0c0020

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;->setContentView(I)V

    .line 19
    const v3, 0x7f0a04dd

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 20
    .local v2, "warningText":Landroid/widget/TextView;
    const v3, 0x7f0a005d

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, "cancelButton":Landroid/widget/Button;
    const v3, 0x7f0a0060

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 23
    .local v1, "confirmButton":Landroid/widget/Button;
    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 24
    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 25
    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 27
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f050042

    invoke-static {p0, v3, v4}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    new-instance v3, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity$1;-><init>(Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    new-instance v3, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity$2;-><init>(Lcom/parrot/freeflight/gamepad/ConfirmRcConfigurationExitActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
