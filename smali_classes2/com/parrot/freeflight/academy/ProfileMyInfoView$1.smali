.class Lcom/parrot/freeflight/academy/ProfileMyInfoView$1;
.super Ljava/lang/Object;
.source "ProfileMyInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/ProfileMyInfoView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileMyInfoView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileMyInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileMyInfoView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView$1;->this$0:Lcom/parrot/freeflight/academy/ProfileMyInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView$1;->this$0:Lcom/parrot/freeflight/academy/ProfileMyInfoView;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->access$000(Lcom/parrot/freeflight/academy/ProfileMyInfoView;)Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileMyInfoView$1;->this$0:Lcom/parrot/freeflight/academy/ProfileMyInfoView;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileMyInfoView;->access$000(Lcom/parrot/freeflight/academy/ProfileMyInfoView;)Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/parrot/freeflight/academy/ProfileMyInfoView$OnEditAvatarClickedListener;->onEditAvatarClicked()V

    .line 69
    :cond_0
    return-void
.end method
