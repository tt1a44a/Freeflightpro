.class Lcom/parrot/freeflight/settings/SettingsViewController$5;
.super Ljava/lang/Object;
.source "SettingsViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 153
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$5;, "Lcom/parrot/freeflight/settings/SettingsViewController$5;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$5;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$5;, "Lcom/parrot/freeflight/settings/SettingsViewController$5;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController$5;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/SettingsViewController;->access$1100(Lcom/parrot/freeflight/settings/SettingsViewController;)V

    .line 157
    return-void
.end method
