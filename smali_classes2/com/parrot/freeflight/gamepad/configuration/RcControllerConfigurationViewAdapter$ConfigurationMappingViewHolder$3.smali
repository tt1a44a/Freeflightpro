.class Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$3;
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
    .line 212
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$3;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$3;->val$this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$3;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v1, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$3;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$300(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$3;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$500(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;)V

    .line 216
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$3;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->notifyDataSetChanged()V

    .line 217
    return-void
.end method
