.class Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;
.super Ljava/lang/Object;
.source "PilotingSettingsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 126
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 127
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;I)V

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)I

    move-result v0

    .line 130
    .local v0, "color":I
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->access$600(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    if-eqz p2, :cond_3

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->access$700(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 129
    .end local v0    # "color":I
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->access$400(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->access$500(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)I

    move-result v0

    goto :goto_1

    .line 134
    .restart local v0    # "color":I
    :cond_3
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;->access$700(Lcom/parrot/freeflight/settings/view/PilotingSettingsViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
