.class Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;
.super Ljava/lang/Object;
.source "AProgressLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    .prologue
    .line 86
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 89
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;"
    if-nez p2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/settings/widget/Slider;->setSelected(Z)V

    .line 92
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;)D

    move-result-wide v0

    .line 95
    .local v0, "valueToSend":D
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSlider:Lcom/parrot/freeflight/settings/widget/Slider;

    new-instance v3, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3$1;-><init>(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;D)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/settings/widget/Slider;->post(Ljava/lang/Runnable;)Z

    .line 103
    .end local v0    # "valueToSend":D
    :cond_0
    return-void
.end method
