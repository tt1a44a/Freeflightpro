.class Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;
.super Ljava/lang/Object;
.source "RcControllerConfigurationViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;-><init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

.field final synthetic val$this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->val$this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 181
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$000(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)I

    move-result v2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$100(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v2, v4}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$102(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;Z)Z

    .line 183
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$200(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;->onAbortCalibration()V

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->getAdapterPosition()I

    move-result v1

    .line 187
    .local v1, "position":I
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$000(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 188
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$002(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;I)I

    .line 198
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->notifyDataSetChanged()V

    .line 199
    return-void

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$002(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;I)I

    .line 191
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$300(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

    .line 192
    .local v0, "channelInfo":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->isCalibrated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v2, v4}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$402(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;I)I

    goto :goto_0

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$1;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v2, v2, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v2, v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$500(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;)V

    goto :goto_0
.end method
