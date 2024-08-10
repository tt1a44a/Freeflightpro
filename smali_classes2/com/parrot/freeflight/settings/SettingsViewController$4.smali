.class Lcom/parrot/freeflight/settings/SettingsViewController$4;
.super Ljava/lang/Object;
.source "SettingsViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 131
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$4;, "Lcom/parrot/freeflight/settings/SettingsViewController$4;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SettingsViewController$4;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$4;, "Lcom/parrot/freeflight/settings/SettingsViewController$4;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SettingsViewController$4;->this$0:Lcom/parrot/freeflight/settings/SettingsViewController;

    invoke-virtual {v0, p3}, Lcom/parrot/freeflight/settings/SettingsViewController;->setSelectedCategory(I)V

    .line 136
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/parrot/freeflight/settings/SettingsViewController$4;, "Lcom/parrot/freeflight/settings/SettingsViewController$4;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
