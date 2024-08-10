.class Lcom/parrot/freeflight/core/academy/AcademyManager$9;
.super Ljava/lang/Object;
.source "AcademyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/academy/AcademyManager;->setUnreadFlightCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

.field final synthetic val$unreadFlightCount:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/academy/AcademyManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/academy/AcademyManager;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$9;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iput p2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$9;->val$unreadFlightCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 453
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$9;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$9;->val$unreadFlightCount:I

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1302(Lcom/parrot/freeflight/core/academy/AcademyManager;I)I

    .line 454
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$9;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$100(Lcom/parrot/freeflight/core/academy/AcademyManager;)V

    .line 456
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$9;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1400(Lcom/parrot/freeflight/core/academy/AcademyManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 457
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "unread_flight_count"

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/AcademyManager$9;->this$0:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-static {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->access$1300(Lcom/parrot/freeflight/core/academy/AcademyManager;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 459
    return-void
.end method
