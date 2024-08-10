.class Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;
.super Ljava/lang/Object;
.source "WifiBandLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 102
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;, "Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;, "Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;"
    const/4 v2, 0x3

    .line 105
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$600(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$700(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$102(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;I)I

    .line 110
    :cond_0
    return-void
.end method
