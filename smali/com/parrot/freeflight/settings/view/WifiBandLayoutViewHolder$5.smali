.class Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;
.super Ljava/lang/Object;
.source "WifiBandLayoutViewHolder.java"

# interfaces
.implements Lcom/parrot/freeflight/settings/widget/WifiChannelsView$OnChannelClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    .prologue
    .line 113
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;, "Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelClick(IIIZZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "band"    # I
    .param p3, "channel"    # I
    .param p4, "indoorAllowed"    # Z
    .param p5, "outdoorAllowed"    # Z

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;, "Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;"
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiChannel()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;Z)V

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$700(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->setWifiChannel(II)V

    .line 123
    :cond_0
    return-void
.end method
