.class Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity$1;
.super Ljava/lang/Object;
.source "FlightDirectorErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->setResult(I)V

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->finish()V

    .line 59
    return-void
.end method
