.class Lcom/parrot/freeflight/location/CountryDetector$1;
.super Ljava/lang/Object;
.source "CountryDetector.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetStatusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/location/CountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/location/CountryDetector;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/location/CountryDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/location/CountryDetector;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parrot/freeflight/location/CountryDetector$1;->this$0:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternetStatusChanged(Z)V
    .locals 3
    .param p1, "isInternetAvailable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/location/CountryDetector$1;->this$0:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/location/CountryDetector;->access$002(Lcom/parrot/freeflight/location/CountryDetector;Z)Z

    .line 63
    if-eqz p1, :cond_0

    .line 65
    iget-object v2, p0, Lcom/parrot/freeflight/location/CountryDetector$1;->this$0:Lcom/parrot/freeflight/location/CountryDetector;

    iget-object v0, p0, Lcom/parrot/freeflight/location/CountryDetector$1;->this$0:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-static {v0}, Lcom/parrot/freeflight/location/CountryDetector;->access$100(Lcom/parrot/freeflight/location/CountryDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/parrot/freeflight/location/CountryDetector;->access$200(Lcom/parrot/freeflight/location/CountryDetector;I)V

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/location/CountryDetector$1;->this$0:Lcom/parrot/freeflight/location/CountryDetector;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/location/CountryDetector;->access$102(Lcom/parrot/freeflight/location/CountryDetector;Z)Z

    .line 68
    :cond_0
    return-void

    .line 65
    :cond_1
    const/16 v0, 0x3c

    goto :goto_0
.end method
