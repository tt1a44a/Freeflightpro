.class public Lcom/parrot/freeflight/update/UpdateListActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UpdateListActivity.java"


# instance fields
.field private mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;

.field private mUpdateListUiController:Lcom/parrot/freeflight/update/UpdateListUiController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/update/UpdateListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f0c005d

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/update/UpdateListActivity;->setContentView(I)V

    .line 30
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    .line 32
    .local v0, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    new-instance v1, Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getUserSettings()Lcom/parrot/freeflight/user/UserSettings;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/parrot/freeflight/update/view/UpdateListController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/user/UserSettings;Lcom/parrot/freeflight/core/model/ModelStore;)V

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdateListActivity;->mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;

    .line 34
    new-instance v1, Lcom/parrot/freeflight/update/UpdateListUiController;

    const v2, 0x7f0a02d6

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/update/UpdateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/update/UpdateListActivity;->mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;

    new-instance v4, Lcom/parrot/freeflight/update/UpdateListActivity$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/update/UpdateListActivity$1;-><init>(Lcom/parrot/freeflight/update/UpdateListActivity;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/parrot/freeflight/update/UpdateListUiController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/parrot/freeflight/update/view/UpdateListController;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;)V

    iput-object v1, p0, Lcom/parrot/freeflight/update/UpdateListActivity;->mUpdateListUiController:Lcom/parrot/freeflight/update/UpdateListUiController;

    .line 40
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListActivity;->mUpdateListUiController:Lcom/parrot/freeflight/update/UpdateListUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/UpdateListUiController;->pause()V

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListActivity;->mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/view/UpdateListController;->pause()V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListActivity;->mUpdateListController:Lcom/parrot/freeflight/update/view/UpdateListController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/view/UpdateListController;->resume()V

    .line 46
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListActivity;->mUpdateListUiController:Lcom/parrot/freeflight/update/UpdateListUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/update/UpdateListUiController;->resume()V

    .line 47
    return-void
.end method
