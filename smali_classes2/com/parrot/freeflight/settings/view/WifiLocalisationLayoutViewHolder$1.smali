.class Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;
.super Ljava/lang/Object;
.source "WifiLocalisationLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    .prologue
    .line 44
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;->sendOutdoorMode(Z)V

    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 51
    :cond_0
    return-void
.end method
