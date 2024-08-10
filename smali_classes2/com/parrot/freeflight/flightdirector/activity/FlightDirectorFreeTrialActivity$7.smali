.class Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$7;
.super Ljava/lang/Object;
.source "FlightDirectorFreeTrialActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


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
    .line 199
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$7;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$7;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->access$700(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;)V

    .line 203
    return-void
.end method
