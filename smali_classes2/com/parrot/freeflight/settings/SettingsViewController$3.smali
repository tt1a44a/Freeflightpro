.class Lcom/parrot/freeflight/settings/SettingsViewController$3;
.super Ljava/lang/Object;
.source "SettingsViewController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/SettingsViewController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/settings/ISettingsBuilder;Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ListView;Lcom/parrot/freeflight/view/CustomRecyclerView;Lcom/parrot/freeflight/piloting/RelativePositionController;)V
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
    .line 116
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$3;, "Lcom/parrot/freeflight/settings/SettingsViewController$3;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$3;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$3;, "Lcom/parrot/freeflight/settings/SettingsViewController$3;"
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 120
    const/16 v1, 0x17

    if-eq p2, v1, :cond_0

    const/16 v1, 0x60

    if-ne p2, v1, :cond_1

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$3;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$1002(Lcom/parrot/freeflight/settings/SettingsViewController;Z)Z

    .line 122
    iget-object v1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$3;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$900(Lcom/parrot/freeflight/settings/SettingsViewController;)V

    .line 126
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
