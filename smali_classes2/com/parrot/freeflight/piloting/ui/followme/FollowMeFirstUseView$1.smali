.class Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView$1;
.super Ljava/lang/Object;
.source "FollowMeFirstUseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;->setOnPositiveClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeFirstUseView$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 94
    :cond_0
    return-void
.end method
