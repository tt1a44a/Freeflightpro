.class Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3$1;
.super Ljava/lang/Object;
.source "AProgressLayoutViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;

.field final synthetic val$valueToSend:D


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;D)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;

    .prologue
    .line 95
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3$1;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3$1;->this$1:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;

    iput-wide p2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3$1;->val$valueToSend:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 98
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3$1;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3$1;->this$1:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    iget-wide v2, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$3$1;->val$valueToSend:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 99
    return-void
.end method
