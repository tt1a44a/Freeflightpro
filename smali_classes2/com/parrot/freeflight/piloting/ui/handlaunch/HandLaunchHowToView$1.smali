.class Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$1;
.super Ljava/lang/Object;
.source "HandLaunchHowToView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;

.field final synthetic val$listener:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$1;->val$listener:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$1;->val$listener:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;->onHandLaunchHowToUnderstood()V

    .line 38
    return-void
.end method
