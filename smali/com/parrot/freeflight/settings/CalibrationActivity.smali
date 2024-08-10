.class public Lcom/parrot/freeflight/settings/CalibrationActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CalibrationActivity.java"


# static fields
.field private static final KEY_EXTRA_PRODUCT:Ljava/lang/String; = "product"


# instance fields
.field private mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field private mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/settings/CalibrationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "product"

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/ui/UIController;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 61
    .local v0, "consumed":Z
    :goto_0
    if-nez v0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 65
    :cond_0
    :goto_1
    return-void

    .line 60
    .end local v0    # "consumed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    .restart local v0    # "consumed":Z
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/CalibrationActivity;->supportFinishAfterTransition()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/CalibrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 29
    .local v1, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    if-eqz p1, :cond_0

    .line 30
    const-string/jumbo v2, "product"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 32
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v2, "product"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    const-string/jumbo v2, "product"

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 34
    invoke-virtual {v3}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v3

    .line 33
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    .line 36
    :cond_1
    if-nez v1, :cond_2

    .line 37
    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 39
    :cond_2
    iput-object v1, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 40
    invoke-static {v1}, Lcom/parrot/freeflight/settings/CalibrationBuilder;->getLayoutResId(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/settings/CalibrationActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/CalibrationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 43
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/CalibrationActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Lcom/parrot/freeflight/settings/CalibrationActivity$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/settings/CalibrationActivity$1;-><init>(Lcom/parrot/freeflight/settings/CalibrationActivity;)V

    .line 42
    invoke-static {p0, v1, v2, p1, v3}, Lcom/parrot/freeflight/settings/CalibrationBuilder;->buildUIController(Landroid/app/Activity;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)Lcom/parrot/freeflight/piloting/ui/UIController;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->destroy()V

    .line 72
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 73
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->pause()V

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 105
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->resume()V

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 89
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/piloting/ui/UIController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    :cond_0
    const-string/jumbo v0, "product"

    iget-object v1, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->start()V

    .line 80
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 81
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/settings/CalibrationActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->stop()V

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 97
    return-void
.end method
