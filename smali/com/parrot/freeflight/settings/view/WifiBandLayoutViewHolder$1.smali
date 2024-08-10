.class Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;
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
    .line 69
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;"
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;Z)V

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->access$102(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;I)I

    .line 77
    :cond_0
    return-void
.end method
