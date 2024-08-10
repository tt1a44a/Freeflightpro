.class Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$2;
.super Ljava/lang/Object;
.source "HandLaunchSuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;

.field final synthetic val$listener:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$2;->this$0:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;

    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$2;->val$listener:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$2;->val$listener:Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;->onHandLaunchCancel()V

    .line 36
    return-void
.end method
