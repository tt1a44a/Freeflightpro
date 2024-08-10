.class Lcom/parrot/freeflight/settings/SettingsViewController$1;
.super Ljava/lang/Object;
.source "SettingsViewController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/settings/SettingsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/SettingsViewController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/SettingsViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/SettingsViewController;

    .prologue
    .line 59
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$1;, "Lcom/parrot/freeflight/settings/SettingsViewController$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 4
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$1;, "Lcom/parrot/freeflight/settings/SettingsViewController$1;"
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 63
    .local v1, "isGamePadSelected":Z
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$000(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/settings/SettingsCategoryAdapter;->updateGamePadSelection(Z)V

    .line 64
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$100(Lcom/parrot/freeflight/settings/SettingsViewController;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$100(Lcom/parrot/freeflight/settings/SettingsViewController;)I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$200(Lcom/parrot/freeflight/settings/SettingsViewController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 65
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$200(Lcom/parrot/freeflight/settings/SettingsViewController;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v3}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$100(Lcom/parrot/freeflight/settings/SettingsViewController;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/model/SettingsCategory;

    .line 66
    .local v0, "category":Lcom/parrot/freeflight/settings/model/SettingsCategory;
    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/SettingsCategory;->isGamePadDependent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/parrot/freeflight/settings/SettingsViewController$1;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$300(Lcom/parrot/freeflight/settings/SettingsViewController;)Lcom/parrot/freeflight/settings/SettingsEntryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/settings/SettingsEntryAdapter;->notifyDataSetChanged()V

    .line 70
    .end local v0    # "category":Lcom/parrot/freeflight/settings/model/SettingsCategory;
    :cond_0
    return-void

    .line 62
    .end local v1    # "isGamePadSelected":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
