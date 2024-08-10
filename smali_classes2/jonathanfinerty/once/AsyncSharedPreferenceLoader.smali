.class Ljonathanfinerty/once/AsyncSharedPreferenceLoader;
.super Ljava/lang/Object;
.source "AsyncSharedPreferenceLoader.java"


# instance fields
.field private final asyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader$1;

    invoke-direct {v0, p0}, Ljonathanfinerty/once/AsyncSharedPreferenceLoader$1;-><init>(Ljonathanfinerty/once/AsyncSharedPreferenceLoader;)V

    iput-object v0, p0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->asyncTask:Landroid/os/AsyncTask;

    .line 21
    iput-object p1, p0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->context:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->asyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    return-void
.end method

.method static synthetic access$000(Ljonathanfinerty/once/AsyncSharedPreferenceLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljonathanfinerty/once/AsyncSharedPreferenceLoader;

    .prologue
    .line 9
    iget-object v0, p0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method get()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 27
    :try_start_0
    iget-object v1, p0, Ljonathanfinerty/once/AsyncSharedPreferenceLoader;->asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :goto_0
    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "ignored":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 28
    .end local v0    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
