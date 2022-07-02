import random

nrows = 1000

def main():
	for i in range (1, nrows + 1):
		set_friendship_network(i, 0)
			
def set_friendship_network(person_id, i):
	if i > 5:
		return
		
	friend_id = random.randint(1, nrows)
	while (friend_id == person_id):
		friend_id = random.randint(1, nrows)
	
	print_line(person_id, friend_id)	
	set_friendship_network(friend_id, i+1)
	
def print_line(person_id, friend_id):
	print(f'INSERT INTO PERSONFRIEND VALUES ({person_id}, {friend_id});')
	
main()
