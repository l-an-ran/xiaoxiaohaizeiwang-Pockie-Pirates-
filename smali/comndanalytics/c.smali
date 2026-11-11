.class Lcomndanalytics/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcomndanalytics/b;


# direct methods
.method constructor <init>(Lcomndanalytics/b;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/c;->a:Lcomndanalytics/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/c;->a:Lcomndanalytics/b;

    sget-object v1, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_SUCCESS:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    invoke-static {v0, v1}, Lcomndanalytics/b;->a(Lcomndanalytics/b;Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;)V

    return-void
.end method
