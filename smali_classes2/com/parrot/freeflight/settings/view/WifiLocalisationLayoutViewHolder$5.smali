.class Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;
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
    .line 80
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;, "Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;, "Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->access$400(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 85
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->getObject()Lcom/parrot/freeflight/piloting/widget/Namable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 88
    :cond_0
    return-void
.end method
