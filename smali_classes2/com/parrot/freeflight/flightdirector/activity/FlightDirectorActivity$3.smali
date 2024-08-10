.class Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$3;
.super Ljava/lang/Object;
.source "FlightDirectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$3;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$3;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$200(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$3;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$200(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->nextTab()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView;->selectTab(I)V

    .line 149
    return-void
.end method
