.class Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$6;
.super Ljava/lang/Object;
.source "FlightDirectorFreeTrialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$6;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$6;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->setResult(I)V

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$6;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->finish()V

    .line 186
    return-void
.end method
