.class Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;
.super Ljava/lang/Object;
.source "WifiNameLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    .prologue
    .line 81
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;Z)V

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    .line 86
    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->getWifiSecurity()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->access$400(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;->sendPassphraseValue(ILjava/lang/String;)V

    .line 89
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 84
    goto :goto_0
.end method
