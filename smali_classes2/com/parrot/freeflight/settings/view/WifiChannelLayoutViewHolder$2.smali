.class Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;
.super Ljava/lang/Object;
.source "WifiChannelLayoutViewHolder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    .prologue
    .line 71
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 74
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 75
    :cond_0
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
    .line 79
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
