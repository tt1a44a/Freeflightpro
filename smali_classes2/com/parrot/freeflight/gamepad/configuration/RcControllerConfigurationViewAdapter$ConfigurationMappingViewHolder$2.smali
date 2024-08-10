.class Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$2;
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
    .line 202
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$2;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$2;->val$this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$2;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$300(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$2;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

    .line 206
    .local v0, "channelInfo":Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$2;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$200(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;

    move-result-object v2

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->getAction()I

    move-result v3

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->isInverted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v3, v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ChannelEditListener;->onInvertClick(IZ)V

    .line 207
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$2;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$002(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;I)I

    .line 208
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$2;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->notifyDataSetChanged()V

    .line 209
    return-void

    .line 206
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
