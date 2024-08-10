.class Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$4;
.super Ljava/lang/Object;
.source "RcControllerConfigurationViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->updateView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

.field final synthetic val$channelAction:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$4;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iput p2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$4;->val$channelAction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 274
    .local v0, "channelType":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$4;->this$1:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;

    iget-object v1, v1, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder;->this$0:Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;

    iget v2, p0, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter$ConfigurationMappingViewHolder$4;->val$channelAction:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;->access$800(Lcom/parrot/freeflight/gamepad/configuration/RcControllerConfigurationViewAdapter;II)V

    .line 275
    return-void
.end method
