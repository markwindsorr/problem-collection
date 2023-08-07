def countPrimes(self, n):
        """
        :type n: int
        :rtype: int
        """
        prime_count = 0
        
        """
        We only need to check up to the square root of num.
        If num is divisible by a, then num = a * b and since a<=b,
        we can derive that a <= sqrt(num)
        
        Say if a*b = num, we do not need to check b*a
        """
        check_range = int(math.sqrt(n)) 
        for i in range(1, n-1):
            prime_check = self.is_prime(i, check_range)
            if prime_check:
                prime_count = prime_count + 1
                
        return prime_count
                
    def is_prime(self, n, check_range):
        if n == 1:
            return False
        for i in range(2, check_range):
            if n % i == 0:
                return False
        return True
            
            
