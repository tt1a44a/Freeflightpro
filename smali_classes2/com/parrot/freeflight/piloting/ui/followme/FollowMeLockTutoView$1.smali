.class Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$1;
.super Ljava/lang/Object;
.source "FollowMeLockTutoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

.field final synthetic val$listener:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$1;->val$listener:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$1;->val$listener:Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/followme/FollowMeLockTutoView$FollowMeLockTutoListener;->onFollowMeLockTutoAgreed()V

    .line 45
    return-void
.end method
