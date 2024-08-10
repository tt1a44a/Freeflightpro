.class Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$13;
.super Ljava/lang/Object;
.source "MavlinkFileListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;->checkUnsavedPlanBeforeExecute(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

.field final synthetic val$actionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$13;->this$0:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$13;->val$actionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$13;->val$actionListener:Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightplan/mavlink/MavlinkFileListActivity$ActionToDoListener;->execute(Ljava/lang/String;)V

    .line 390
    return-void
.end method
