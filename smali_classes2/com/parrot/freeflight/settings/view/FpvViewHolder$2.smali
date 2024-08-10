.class Lcom/parrot/freeflight/settings/view/FpvViewHolder$2;
.super Ljava/lang/Object;
.source "FpvViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/FpvViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/FpvViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FpvViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/FpvViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/FpvViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/FpvViewHolder;)Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/FpvSettingsEntry;->setAutoLaunchEnabled(Z)V

    .line 64
    :cond_0
    return-void
.end method
